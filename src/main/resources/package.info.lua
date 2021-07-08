return {

    InfoVersion = 1, -- Dont touch this

    ID = "Logger", -- A unique id 
    Version = "0.0.1", -- The package version


    Name = "Logger", -- The name of the project, can use spaces
    Description = "The Dua Logger", -- Description

    Author = {
        Developers = {
            "CoreByte"
        },
        Contributors = {
            "Dotter Team"
        }
    },

    Dependencies = {
        Luvit = {
            -- Luvit dependencies ("username/projectname")
        },
        Dua = {
            -- Dua dependencies ("projectid")
        }
    },

    Contact = {
        Website = "", -- Homepage
        Source = "https://github.com/Dot-lua/Logger", -- Github repro
        Socials = {
            Twitter = "", -- Twitter link
            Facebook = "", -- Facebook link
            Discord = "" -- Discord server invite
        }
    },

    Icon = "", -- Icon for the package, not used normally but can be used by some projects
    Environment = "*",
    Entrypoints = {
        Main = "ga.cubicinc.logger.Test"
    }

}
