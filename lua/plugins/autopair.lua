 return{
    'windwp/nvim-autopairs',
    config = function()
      require('nvim-autopairs').setup{}
      local npairs = require('nvim-autopairs')
      local Rule   = require('nvim-autopairs.rule')

      npairs.add_rules({
        Rule("(", ")"),
        Rule("{", "}"),
        Rule("[", "]"),
        Rule("\"", "\""),
        Rule("'", "'"),
        Rule("<", ">"),
      })
    end
  }
