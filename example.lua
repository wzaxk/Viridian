--h ub name
getgenv().hubname='Example'
getgenv().hubsubname='SubExample'

local ui = loadstring(game:HttpGet("https://raw.githubusercontent.com/wzaxk/Viridian/refs/heads/main/source"))()


local main = ui.new()
local tab = main:create_tab('Example Tab')
local tab2 = main:create_tab("Auto", "7734051454") -- 7734051454 is rbxassetid


-- title for other tab
tab2.create_title({
    name = 'Example Of Title',
    section = 'left'
})

-- title
tab.create_title({
    name = 'Example Of Title',
    section = 'left'
})

-- button
tab.create_button({
    name = 'Example Of Button',
    description='',
    flag = 'buttonflagname',

    enabled = false,

    callback = function(state: boolean)
        print("do it")
    end
})

-- toggle
tab.create_toggle({
    name = 'Example Of Toggle',
    description='Example Of Description',
    flag = 'toggleflagname',

    enabled = false,

    callback = function(state: boolean)
        if state then 
            print("do it")
        else
            print("dont do it")
        end
    end
})

-- checkbox
tab.create_checkbox({
    name = 'Example Of Toggle',
    description='Example Of Description',
    flag = 'toggleflagname',

    enabled = false,

    callback = function(state: boolean)
        if state then 
            print("do it")
        else
            print("dont do it")
        end
    end
})

-- dropdown
tab.create_dropdown({
    name = 'Select Option',
    flag = 'selectoption',

    option = 'Basic Option',
    options = {'option1', 'option2', 'option3'},

    callback = function(value: string)
        print(value)
    end
})

-- side dropdown
tab.create_sidedropdown({
    name = 'Select Side Option',
    flag = 'sidedropdown',

    option = 'Select Option',
    options = {'option1', 'option2', 'option3'},

    callback = function(value: string)
        print(value)
    end
})

-- multi dropdown
tab.create_multidropdown({
    name = 'Multi Select Option',
    flag = 'multiselectoption',

    option = 'Basic Option',
    options = {'option1', 'option2', 'option3'},

    callback = function(value: string)
        print(value)
    end
})

-- multi side dropdown
tab.create_multisidedropdown({
    name = 'Multi Select Side Option',
    flag = 'multisidedropdown',

    option = 'Select Options',
    options = {'option1', 'option2', 'option3'},

    callback = function(value: string)
        print(value)
    end
})

-- slider
tab.create_slider({
    name = 'Slider',
    flag = 'sliderflagname',

    value = 90,
    minimum_value = 10,
    maximum_value = 1000,

    callback = function(value: number)
        print(value)
    end
})

-- input
tab:create_input({
    name = "Enter Text",
    flag = "inputflagname",
})

-- keybind
tab.create_keybind({
    name = "Keybind",
    flag = "flagname",
    keycode = Enum.KeyCode.H,
    callback = function(key)
        print("Keybind pressed:", key)
    end
}) 

-- toggle ui keybind
tab.create_keybind({
    name = "Keybind",
    flag = "toggleui",
    keycode = Enum.KeyCode.Y,
    callback = function(key)
        print("Keybind pressed:", key)
    end
}) 

-- get flags
--print(ui.Flags["inputflagname"])


-- change theme
--ApplyTheme("Dark")


-----updaters-----


--[[
--dropdown / multidropdown options
ui.Flags["selectoption"]:UpdateOptions({"new1","new2","new3"})

-- toggle
ui.Flags["selectToggle"]:UpdateToggle()
ui.Flags["selectToggle"]:UpdateToggle(true)
ui.Flags["selectToggle"]:UpdateToggle(false)

-- input
ui.Flags["selectInput"]:UpdateInput("true")
ui.Flags["selectInput"]:ClearInput()
]]
