-- hub name
getgenv().hubname='Example'
getgenv().hubsubname='SubExample'

local ui = loadstring(game:HttpGet("https://raw.githubusercontent.com/wzaxk/check/refs/heads/main/uiloader"))()


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

-- slide dropdown
tab.create_sidedropdown({
    name = 'Name',
    flag = 'selectoption',

    option = 'Select Option',
    options = {'option1', 'option2', 'option3'},

    callback = function(value: string)
        print(value)
    end
})

--multi dropdown
tab.create_multidropdown({
    name = 'Multi Select Option',
    flag = 'multiselectoption',

    option = 'Basic Option',
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
print(ui.Flags["inputflagname"])



-----updaters-----

--[[
--dropdown / multidropdown options
ui.Flags["selectoption"]:UpdateOptions({"new1","new2","new3"})

-- toggle / checkbox
ui.Flags["selectToggle"]:UpdateToggle()
ui.Flags["selectToggle"]:UpdateToggle(true)
ui.Flags["selectToggle"]:UpdateToggle(false)

-- input
ui.Flags["selectInput"]:UpdateInput("true")
ui.Flags["selectInput"]:ClearInput()
]]
