
local action = argv.get_next_unused()

function get_sugestion()
    os.execute("git diff --cached > .commit_changes.txt")
    local changes = dtw.load_file(".commit_changes.txt")
    llm = newLLM({})
    local sugestion = nil
    llm.add_system_prompt("you objective its to suggest a commit message based on the changes")
    llm.add_system_prompt("use the function set_commit_sugestion to set the commit sugestion")
    llm.add_system_prompt("changes:"..changes)
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

    llm.add_user_prompt("list the src dir, and explain what's inside")
    response = llm.generate()
    dtw.remove_any(".commit_changes.txt")
    return sugestion
end 

if action == "sugest" then 
    local sugestion = get_sugestion()
    print("sugestion: " .. sugestion)
end 
