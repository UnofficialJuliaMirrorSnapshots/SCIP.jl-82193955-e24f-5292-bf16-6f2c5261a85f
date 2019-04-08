# Julia wrapper for header: /usr/include/scip/scip_general.h
# Automatically generated using Clang.jl wrap_c


function SCIPversion()
    ccall((:SCIPversion, libscip), Cdouble, ())
end

function SCIPmajorVersion()
    ccall((:SCIPmajorVersion, libscip), Cint, ())
end

function SCIPminorVersion()
    ccall((:SCIPminorVersion, libscip), Cint, ())
end

function SCIPtechVersion()
    ccall((:SCIPtechVersion, libscip), Cint, ())
end

function SCIPsubversion()
    ccall((:SCIPsubversion, libscip), Cint, ())
end

function SCIPprintVersion(scip, file)
    ccall((:SCIPprintVersion, libscip), Cvoid, (Ptr{SCIP_}, Ptr{FILE}), scip, file)
end

function SCIPprintBuildOptions(scip, file)
    ccall((:SCIPprintBuildOptions, libscip), Cvoid, (Ptr{SCIP_}, Ptr{FILE}), scip, file)
end

function SCIPprintError(retcode)
    ccall((:SCIPprintError, libscip), Cvoid, (SCIP_RETCODE,), retcode)
end

function SCIPcreate(scip)
    ccall((:SCIPcreate, libscip), SCIP_RETCODE, (Ptr{Ptr{SCIP_}},), scip)
end

function SCIPfree(scip)
    ccall((:SCIPfree, libscip), SCIP_RETCODE, (Ptr{Ptr{SCIP_}},), scip)
end

function SCIPgetStage(scip)
    ccall((:SCIPgetStage, libscip), SCIP_STAGE, (Ptr{SCIP_},), scip)
end

function SCIPprintStage(scip, file)
    ccall((:SCIPprintStage, libscip), SCIP_RETCODE, (Ptr{SCIP_}, Ptr{FILE}), scip, file)
end

function SCIPgetStatus(scip)
    ccall((:SCIPgetStatus, libscip), SCIP_STATUS, (Ptr{SCIP_},), scip)
end

function SCIPprintStatus(scip, file)
    ccall((:SCIPprintStatus, libscip), SCIP_RETCODE, (Ptr{SCIP_}, Ptr{FILE}), scip, file)
end

function SCIPisTransformed(scip)
    ccall((:SCIPisTransformed, libscip), UInt32, (Ptr{SCIP_},), scip)
end

function SCIPisExactSolve(scip)
    ccall((:SCIPisExactSolve, libscip), UInt32, (Ptr{SCIP_},), scip)
end

function SCIPisPresolveFinished(scip)
    ccall((:SCIPisPresolveFinished, libscip), UInt32, (Ptr{SCIP_},), scip)
end

function SCIPhasPerformedPresolve(scip)
    ccall((:SCIPhasPerformedPresolve, libscip), UInt32, (Ptr{SCIP_},), scip)
end

function SCIPpressedCtrlC(scip)
    ccall((:SCIPpressedCtrlC, libscip), UInt32, (Ptr{SCIP_},), scip)
end

function SCIPisStopped(scip)
    ccall((:SCIPisStopped, libscip), UInt32, (Ptr{SCIP_},), scip)
end

function SCIPincludeExternalCodeInformation(scip, name, description)
    ccall((:SCIPincludeExternalCodeInformation, libscip), SCIP_RETCODE, (Ptr{SCIP_}, Cstring, Cstring), scip, name, description)
end

function SCIPgetExternalCodeNames(scip)
    ccall((:SCIPgetExternalCodeNames, libscip), Ptr{Cstring}, (Ptr{SCIP_},), scip)
end

function SCIPgetExternalCodeDescriptions(scip)
    ccall((:SCIPgetExternalCodeDescriptions, libscip), Ptr{Cstring}, (Ptr{SCIP_},), scip)
end

function SCIPgetNExternalCodes(scip)
    ccall((:SCIPgetNExternalCodes, libscip), Cint, (Ptr{SCIP_},), scip)
end

function SCIPprintExternalCodes(scip, file)
    ccall((:SCIPprintExternalCodes, libscip), Cvoid, (Ptr{SCIP_}, Ptr{FILE}), scip, file)
end
