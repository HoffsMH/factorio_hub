defmodule Mix.Common do
  @meta "#{System.get_env("PROJECT_ROOT")}/meta"
  @meta_elixir "#{@meta}/deps/elixir"

  @deps_path "#{@meta_elixir}/deps"
  @config_path "#{@meta_elixir}/config/config.exs"
  @lockfile "#{@meta_elixir}/mix.lock"
  @build_path "#{@meta_elixir}/_build"
  @formatter "#{@meta_elixir}/.formatter.exs"

  @elixir_version "~> 1.8"
  @aliases [
    format: "format '{mix,.formatter}.exs' '{config,lib,test}/**/*.{ex,exs}'"
   ]

  def version do
    File.read!("#{@meta}/info/VERSION")
  end

  def project_paths do
    [
      deps_path: @deps_path,
      config_path: @config_path,
      lockfile: @lockfile,
      build_path: @build_path,
      formatter: @formatter
    ]
  end
  def project(name, deps, desc), do: project(name, deps, desc, [])

  def project(name, deps, description, opts) do
    [
      app: name,
      version: version(),
      elixir: @elixir_version,
      deps: build_deps(deps.(Mix.env())),
      description: description,
      package: package(name),
      start_permanent: Mix.env() == :prod,
      aliases: @aliases
    ] ++ project_paths() ++ opts
  end

  defp package(name) do
    [
      name: name,
      files: ["lib", "mix.exs", "README.md"],
      licenses: ["MIT"],
      links: %{},
      maintainers: []
    ]
  end

  defp build_deps(deps) do
    internal_deps(deps[:internal]) ++ external_deps(deps[:external]) ++ global_deps()
  end

  defp internal_deps(nil), do: nil

  defp internal_deps(deps) do
    deps
  end

  defp external_deps(nil), do: []

  defp external_deps(deps) do
    deps
    |> Enum.map(&external_dep/1)
  end

  defp external_dep({name, opts}) do
    {
      name,
      [
        path: "#{@deps_path}/#{name}", override: true, env: Mix.env()
      ] ++ opts
    }
  end
  defp external_dep({name}), do: external_dep({name, []})

  defp global_deps() do
    [{:ex_doc, path: "#{@deps_path}/ex_doc", only: :dev, override: true}]
  end
end
