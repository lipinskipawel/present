local parse = require("present")._parse_slides

local eq = assert.are.same

describe("present.parse_slides", function()
    it("parse an empty file", function()
        eq({
            slides = {
                {
                    title = '',
                    body = {},
                    blocks = {}
                }
            }
        }, parse {})
    end)

    it("parse a file with one slide", function()
        eq({
            slides = {
                {
                    title = '# This is first the slide',
                    body = {
                        "This is the body"
                    },
                    blocks = {}
                }
            }
        }, parse {
            "# This is first the slide",
            "This is the body"
        })
    end)

    it("parse a file with one slide, and a block", function()
        local results = parse {
            "# This is first the slide",
            "This is the body",
            "```lua",
            "print('hi')",
            "```",
        }

        eq(1, #results.slides)
        local slide = results.slides[1]

        eq('# This is first the slide', slide.title)

        eq({
            "This is the body",
            "```lua",
            "print('hi')",
            "```",
        }, slide.body)

        eq({
            language = 'lua',
            body = "print('hi')"
        }, slide.blocks[1])
    end)
end)
