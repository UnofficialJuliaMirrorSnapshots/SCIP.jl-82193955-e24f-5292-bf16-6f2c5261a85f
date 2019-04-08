# Julia wrapper for header: /usr/include/scip/scip_presol.h
# Automatically generated using Clang.jl wrap_c


function SCIPincludePresol(scip, name, desc, priority, maxrounds, timing, presolcopy, presolfree, presolinit, presolexit, presolinitpre, presolexitpre, presolexec, presoldata)
    ccall((:SCIPincludePresol, libscip), SCIP_RETCODE, (Ptr{SCIP_}, Cstring, Cstring, Cint, Cint, SCIP_PRESOLTIMING, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{SCIP_PRESOLDATA}), scip, name, desc, priority, maxrounds, timing, presolcopy, presolfree, presolinit, presolexit, presolinitpre, presolexitpre, presolexec, presoldata)
end

function SCIPincludePresolBasic(scip, presolptr, name, desc, priority, maxrounds, timing, presolexec, presoldata)
    ccall((:SCIPincludePresolBasic, libscip), SCIP_RETCODE, (Ptr{SCIP_}, Ptr{Ptr{SCIP_PRESOL}}, Cstring, Cstring, Cint, Cint, SCIP_PRESOLTIMING, Ptr{Cvoid}, Ptr{SCIP_PRESOLDATA}), scip, presolptr, name, desc, priority, maxrounds, timing, presolexec, presoldata)
end

function SCIPsetPresolCopy(scip, presol, presolcopy)
    ccall((:SCIPsetPresolCopy, libscip), SCIP_RETCODE, (Ptr{SCIP_}, Ptr{SCIP_PRESOL}, Ptr{Cvoid}), scip, presol, presolcopy)
end

function SCIPsetPresolFree(scip, presol, presolfree)
    ccall((:SCIPsetPresolFree, libscip), SCIP_RETCODE, (Ptr{SCIP_}, Ptr{SCIP_PRESOL}, Ptr{Cvoid}), scip, presol, presolfree)
end

function SCIPsetPresolInit(scip, presol, presolinit)
    ccall((:SCIPsetPresolInit, libscip), SCIP_RETCODE, (Ptr{SCIP_}, Ptr{SCIP_PRESOL}, Ptr{Cvoid}), scip, presol, presolinit)
end

function SCIPsetPresolExit(scip, presol, presolexit)
    ccall((:SCIPsetPresolExit, libscip), SCIP_RETCODE, (Ptr{SCIP_}, Ptr{SCIP_PRESOL}, Ptr{Cvoid}), scip, presol, presolexit)
end

function SCIPsetPresolInitpre(scip, presol, presolinitpre)
    ccall((:SCIPsetPresolInitpre, libscip), SCIP_RETCODE, (Ptr{SCIP_}, Ptr{SCIP_PRESOL}, Ptr{Cvoid}), scip, presol, presolinitpre)
end

function SCIPsetPresolExitpre(scip, presol, presolexitpre)
    ccall((:SCIPsetPresolExitpre, libscip), SCIP_RETCODE, (Ptr{SCIP_}, Ptr{SCIP_PRESOL}, Ptr{Cvoid}), scip, presol, presolexitpre)
end

function SCIPfindPresol(scip, name)
    ccall((:SCIPfindPresol, libscip), Ptr{SCIP_PRESOL}, (Ptr{SCIP_}, Cstring), scip, name)
end

function SCIPgetPresols(scip)
    ccall((:SCIPgetPresols, libscip), Ptr{Ptr{SCIP_PRESOL}}, (Ptr{SCIP_},), scip)
end

function SCIPgetNPresols(scip)
    ccall((:SCIPgetNPresols, libscip), Cint, (Ptr{SCIP_},), scip)
end

function SCIPsetPresolPriority(scip, presol, priority)
    ccall((:SCIPsetPresolPriority, libscip), SCIP_RETCODE, (Ptr{SCIP_}, Ptr{SCIP_PRESOL}, Cint), scip, presol, priority)
end
