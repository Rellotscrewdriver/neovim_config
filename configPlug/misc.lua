require('orgmode').setup({
  org_agenda_files = {'~/.notes/*', '~/my-orgs/**/*'},
  org_default_notes_file = '~/.notes/refile.org',
  org_todo_keywords = {'TODO', 'WAITING', '|', 'DONE', 'DELEGATED'},
  mappings = {
    global = {
      org_agenda = {'gA', '<Leader>oa'},
      org_capture = {'gC', '<Leader>oc'}
    }
  },
  org_todo_keyword_faces = {
    WAITING = ':foreground blue :weight bold',
    DELEGATED = ':background #FFFFFF :slant italic :underline on',
   -- TODO = ':background #000000 :foreground red', -- overrides builtin color for `TODO` keyword
  }
})