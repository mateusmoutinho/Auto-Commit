

function get_sugestion()
    os.execute("git diff --cached > .commit_changes.txt")
    local changes = dtw.load_file(".commit_changes.txt")
    llm = newLLM({})
    local sugestion = nil
    llm.add_system_prompt("you objective its to suggest a commit message based on the changes")
    llm.add_system_prompt("use the function set_commit_sugestion to set the commit sugestion")
    llm.add_system_prompt("changes:"..changes)
    dtw.remove_any(".commit_changes.txt")

    llm.add_function(
        "set_commit_sugestion", 
        "set the commit sugestio", 
        {
            {name = "sugestion",description="the commit sugestion name", type = "string", required = true},
        },
        function(args)
            sugestion = args.sugestion
            return "sugestion setted"
        end
    )
    response = llm.generate()
    return sugestion
end 

local action = argv.get_next_unused()


if action ~= "sugest" and action ~= "commit" and action ~= "add_and_commit" then 
    print("action must be between:(sugest,commit,add_and_commit)")
end 

if action == "add_and_commit" then
    os.execute("git add .")
end 


local sugestion = get_sugestion()
if sugestion == nil then 
    print("no sugestion")
    return
end

if action == "sugest" then 
    print("sugestion: " .. sugestion)
end 

if action == "commit"  or action ==  "add_and_commit" then 
    print("commited as:"..sugestion)
    os.execute("git commit -m '" .. sugestion .. "'")
end 
