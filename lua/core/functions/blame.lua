return function()
    -- Get the current line number
    local line_number = vim.api.nvim_win_get_cursor(0)[1]

    -- Get the current buffer's file name
    local file_name = vim.api.nvim_buf_get_name(0)

    -- Create the git blame command for the specific line
    local cmd = string.format("git blame -L %d,+1 -- %s", line_number, file_name)

    -- Execute the command and capture the output
    local handle = io.popen(cmd)
    local result = handle:read("*a")
    handle:close()

    -- Check if result is not nil
    if not result then
        print("Error running git blame")
        return
    end

    -- Parsing the output to get the author's full first name and date
    local author, date = string.match(result, "^.-%((.-)%s+(%d+-%d+-%d+)")
    if not author or not date then
        print("Error parsing git blame output")
        return
    end

    -- Extract the first name of the author
    local first_name = author:match("([^%s]+)")

    -- Calculate the age of the commit
    local year, month, day = date:match("(%d+)-(%d+)-(%d+)")
    local commit_date = os.time({ year = year, month = month, day = day })
    local current_time = os.time()
    local diff_seconds = os.difftime(current_time, commit_date)

    -- Determine the time unit to display
    local years = math.floor(diff_seconds / (365 * 24 * 60 * 60))
    local days = math.floor(diff_seconds / (24 * 60 * 60)) % 365
    local hours = math.floor(diff_seconds / (60 * 60)) % 24
    local minutes = math.floor(diff_seconds / 60) % 60

    local time_unit, time_value
    if years > 0 then
        time_unit = "y"
        time_value = years
    elseif days > 0 then
        time_unit = "d"
        time_value = days
    elseif hours > 0 then
        time_unit = "h"
        time_value = hours
    else
        time_unit = "m"
        time_value = minutes
    end

    print(string.format("%d%s ago, %s", time_value, time_unit, first_name))
end
