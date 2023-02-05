local BENCH = {}

BENCH.Class = "general"
BENCH.Name = "General Workbench"
BENCH.Desc = "Can be used to craft basic items."
BENCH.Model = "models/props_combine/breendesk.mdl"
BENCH.Illegal = true
BENCH.NotIllegalFor = {TEAM_COPS}

impulse.RegisterBench(BENCH)