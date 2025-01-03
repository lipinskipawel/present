local parse = require("present")._parse_slides

local eq = assert.are.same

describe("present.parse_slides", function()
    it("parse an empty file", function()
        eq({
            slides = {
                {
                    title = '',
                    body = {}
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
                    }
                }
            }
        }, parse {
            "# This is first the slide",
            "This is the body"
        })
    end)
end)
