# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule ASAGI_jll
using Base
using Base: UUID
using LazyArtifacts
using MPIPreferences
Base.include(@__MODULE__, joinpath("..", ".pkg", "platform_augmentation.jl"))
import JLLWrappers

JLLWrappers.@generate_main_file_header("ASAGI")
JLLWrappers.@generate_main_file("ASAGI", Base.UUID("dfba4624-e288-5d54-9b1c-6ee626323112"))
end  # module ASAGI_jll
