-- CONSTANTS
DATABASE_VERSION = 0.23
USER_01 = "Admin"
PASS_01 = "4868"
QUICK_LOG = "ql"
WELCOME = false

ERROR01 = "ERROR01: INCORECT USERNAME"
ERROR02 = "ERROR02: INCORECT PASSWORD"
ERROR03 = "MISSING ARG."
-- STARTUP
io.write("ENGINE LANGUAGE VERSION: ", _VERSION)
io.write("\nDATABASE VERSION: ", DATABASE_VERSION, "\n")

-- LOGIN
io.write("Username: ")
local getUser = io.read()

io.write("Password: ")
local getPass = io.read()

-- DATABASE FUNCTION
function DATABASE()
    io.write("\n--------------------------------------\n")

    io.write("database/", USER_01, ": ")
    i = io.read()

    -- nil
    if i == nil then
        io.write(ERROR03)
        DATABASE()
    end
    -- %
    if i == "%reboot" then
        DATABASE()
    end

    if i == "%terminate" then
        io.write("Process Terminated")
    end

    -- !
    if i == "!tprint" then
        io.write("This is a test print")
        DATABASE()
    end

    if i == "!help" then
        io.write("\nPREFIXES:\n")
        io.write("% - Interact with main function\n")
        io.write("! - Print out lists and text files\n")
        io.write("& - Write the name of a game or write '&help' to see games list\n")
        io.write("If you write an unknown command it will redirect to here\n")
        io.write("\n see cmds.txt in in 'Main' for list of commands")
        DATABASE()
    end

    -- &
    if i == "&baldi" then
        os.execute("")
    end
end

-- LOGIN LOGIC
if getUser == USER_01 and getPass == PASS_01 then
    WELCOME = true
else if getUser ~= USER_01 then
    io.write(ERROR01)
else if getPass ~= PASS_01 then
    io.write(ERROR02)
        end
    end
end

-- CALL DATABASE FUNCTION
if WELCOME == true then
    DATABASE()
end
