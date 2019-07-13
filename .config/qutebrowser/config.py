# Colour variables
colour00                                          = '#2d2d2d'
colour01                                          = '#393939'
colour02                                          = '#515151'
colour03                                          = '#747369'
colour04                                          = '#a09f93'
colour05                                          = '#d3d0c8'
colour06                                          = '#e8e6df'
colour07                                          = '#f2f0ec'
colour08                                          = '#f2777a'
colour09                                          = '#f99157'
colour0A                                          = '#ffcc66'
colour0B                                          = '#99cc99'
colour0C                                          = '#66cccc'
colour0D                                          = '#6699cc'
colour0E                                          = '#cc99cc'
colour0F                                          = '#d27b53'

# Font variables
font                                             = 'yuki'
font_size                                        = '8'


c.aliases                                        = {'w': 'session-save', 'q': 'quit', 'wq': 'quit --save'}

config.bind('J', 'tab-prev')
config.bind('K', 'tab-next')

config.bind('<j>', 'scroll-px 0 100')
config.bind('<k>', 'scroll-px 0 -100')

c.auto_save.session                              = False

c.backend                                        = 'webengine'

c.colors.completion.category.bg                  = colour00
c.colors.completion.category.border.bottom       = colour00
c.colors.completion.category.border.top          = colour00
c.colors.completion.category.fg                  = colour05
c.colors.completion.even.bg                      = colour00
c.colors.completion.fg                           = colour05
c.colors.completion.item.selected.bg             = colour0D
c.colors.completion.item.selected.border.bottom  = colour0D
c.colors.completion.item.selected.border.top     = colour0D
c.colors.completion.item.selected.fg             = colour00
c.colors.completion.match.fg                     = colour08
c.colors.completion.odd.bg                       = colour00
c.colors.completion.scrollbar.bg                 = colour00
c.colors.completion.scrollbar.fg                 = colour01

c.colors.downloads.bar.bg                        = colour00
c.colors.downloads.error.bg                      = colour00
c.colors.downloads.error.fg                      = colour08
c.colors.downloads.start.bg                      = colour00
c.colors.downloads.start.fg                      = colour05
c.colors.downloads.stop.bg                       = colour0B
c.colors.downloads.stop.fg                       = colour00
c.colors.downloads.system.bg                     = 'none'
c.colors.downloads.system.fg                     = 'none'

c.colors.hints.bg                                = colour00
c.colors.hints.fg                                = colour05
c.colors.hints.match.fg                          = colour0B

c.colors.keyhint.bg                              = colour00
c.colors.keyhint.fg                              = colour05
c.colors.keyhint.suffix.fg                       = colour0A

c.colors.messages.error.bg                       = colour00
c.colors.messages.error.border                   = colour08
c.colors.messages.error.fg                       = colour05
c.colors.messages.info.bg                        = colour00
c.colors.messages.info.border                    = colour01
c.colors.messages.info.fg                        = colour05
c.colors.messages.warning.bg                     = colour00
c.colors.messages.warning.border                 = colour09
c.colors.messages.warning.fg                     = colour05

c.colors.prompts.bg                              = colour00
c.colors.prompts.border                          = '3px ' + colour0D
c.colors.prompts.fg                              = colour05
c.colors.prompts.selected.bg                     = colour01
c.colors.statusbar.caret.bg                      = colour00
c.colors.statusbar.caret.fg                      = colour0E
c.colors.statusbar.caret.selection.bg            = colour00
c.colors.statusbar.caret.selection.fg            = colour0E
c.colors.statusbar.command.bg                    = colour00
c.colors.statusbar.command.fg                    = colour05
c.colors.statusbar.passthrough.bg                = colour00
c.colors.statusbar.passthrough.fg                = colour0C
c.colors.statusbar.command.private.bg            = colour00
c.colors.statusbar.command.private.fg            = colour05
c.colors.statusbar.insert.bg                     = colour00
c.colors.statusbar.insert.fg                     = colour0D
c.colors.statusbar.normal.bg                     = colour00
c.colors.statusbar.normal.fg                     = colour05
c.colors.statusbar.private.bg                    = colour00
c.colors.statusbar.private.fg                    = colour05
c.colors.statusbar.progress.bg                   = colour05
c.colors.statusbar.url.error.fg                  = colour09
c.colors.statusbar.url.fg                        = colour05
c.colors.statusbar.url.hover.fg                  = colour0C
c.colors.statusbar.url.success.http.fg           = colour08
c.colors.statusbar.url.success.https.fg          = colour0B
c.colors.statusbar.url.warn.fg                   = colour0A
c.colors.tabs.bar.bg                             = colour00
c.colors.tabs.even.bg                            = colour00
c.colors.tabs.even.fg                            = colour05
c.colors.tabs.indicator.error                    = '#00000000'
c.colors.tabs.indicator.start                    = '#00000000'
c.colors.tabs.indicator.stop                     = '#00000000'
c.colors.tabs.indicator.system                   = 'none'
c.colors.tabs.odd.bg                             = colour00
c.colors.tabs.odd.fg                             = colour05
c.colors.tabs.selected.even.bg                   = colour0D
c.colors.tabs.selected.even.fg                   = colour00
c.colors.tabs.selected.odd.bg                    = colour0D
c.colors.tabs.selected.odd.fg                    = colour00
c.colors.webpage.bg                              = 'white'

c.completion.cmd_history_max_items               = 100
c.completion.height                              = 150
c.completion.quick                               = True
c.completion.scrollbar.padding                   = 0
c.completion.scrollbar.width                     = 0

c.confirm_quit                                   = ['downloads']

c.content.cache.appcache                         = True
c.content.cache.maximum_pages                    = 0
c.content.cache.size                             = None
c.content.default_encoding                       = 'iso-8859-1'
c.content.dns_prefetch                           = True
c.content.frame_flattening                       = True
c.content.geolocation                            = 'ask'
c.content.headers.accept_language                = 'en-US,en'
c.content.headers.custom                         = {}
c.content.headers.do_not_track                   = True
c.content.headers.user_agent                     = None
c.content.host_blocking.enabled                  = True
c.content.host_blocking.lists                    = ['https://www.malwaredomainlist.com/hostslist/hosts.txt', 'http://someonewhocares.org/hosts/hosts', 'http://winhelp2002.mvps.org/hosts.zip', 'http://malwaredomains.lehigh.edu/files/justdomains.zip', 'https://pgl.yoyo.org/adservers/serverlist.php?hostformat=hosts&mimetype=plaintext', 'http://sbc.io/hosts/alternates/fakenews-gambling/hosts']
c.content.host_blocking.whitelist                = ['qutebrowser.org']
c.content.hyperlink_auditing                     = False
c.content.images                                 = True
c.content.javascript.alert                       = True
c.content.javascript.can_access_clipboard        = False
c.content.javascript.can_close_tabs              = False
c.content.javascript.can_open_tabs_automatically = False
c.content.javascript.enabled                     = True
c.content.javascript.modal_dialog                = False
c.content.javascript.prompt                      = True
c.content.media_capture                          = 'ask'
c.content.notifications                          = 'ask'
c.content.pdfjs                                  = True
c.content.plugins                                = True

c.downloads.location.directory                   = '~/Downloads/'
c.downloads.location.prompt                      = False
c.downloads.location.remember                    = True
c.downloads.location.suggestion                  = 'path'
c.downloads.open_dispatcher                      = None
c.downloads.position                             = 'bottom'
c.downloads.remove_finished                      = -1


c.editor.command                                 = ['st', '-e', 'nvim', '{}']

c.fonts.completion.category                      = font_size + 'pt ' + font
c.fonts.completion.entry                         = font_size + 'pt ' + font
c.fonts.debug_console                            = font_size + 'pt ' + font
c.fonts.downloads                                = font_size + 'pt ' + font
c.fonts.hints                                    = font_size + 'pt ' + font
c.fonts.keyhint                                  = font_size + 'pt ' + font
c.fonts.messages.error                           = font_size + 'pt ' + font
c.fonts.messages.info                            = font_size + 'pt ' + font
c.fonts.messages.warning                         = font_size + 'pt ' + font
c.fonts.prompts                                  = font_size + 'pt ' + font
c.fonts.statusbar                                = font_size + 'pt ' + font
c.fonts.tabs                                     = font_size + 'pt ' + font

c.hints.auto_follow                              = 'unique-match'
c.hints.auto_follow_timeout                      = 0
c.hints.border                                   = '3px solid ' + colour0D
c.hints.chars                                    = 'asdfghjkl'
c.hints.dictionary                               = '/usr/share/dict/words'
c.hints.find_implementation                      = 'python'
c.hints.hide_unmatched_rapid_hints               = True
c.hints.min_chars                                = 1
c.hints.mode                                     = 'letter'
c.hints.next_regexes                             = ['\\bnext\\b', '\\bmore\\b', '\\bnewer\\b', '\\b[>→≫]\\b', '\\b(>>|»)\\b', '\\bcontinue\\b']
c.hints.prev_regexes                             = ['\\bprev(ious)?\\b', '\\bback\\b', '\\bolder\\b', '\\b[<←≪]\\b', '\\b(<<|«)\\b']
c.hints.scatter                                  = True
c.hints.uppercase                                = False

c.history_gap_interval                           = 30

c.search.ignore_case                             = 'smart'

c.input.insert_mode.auto_leave                   = True
c.input.insert_mode.auto_load                    = True
c.input.partial_timeout                          = 0

c.keyhint.delay                                  = 0

c.messages.timeout                               = 2500

c.new_instance_open_target                       = 'tab'

c.prompt.filebrowser                             = True
c.prompt.radius                                  = 0

c.scrolling.bar                                  = 'always'
c.scrolling.smooth                               = False
c.statusbar.hide                                 = False
c.statusbar.padding                              = {'top': 3, 'bottom': 3, 'left': 3, 'right': 3}
c.statusbar.position                             = 'bottom'

c.tabs.background                                = False
c.tabs.close_mouse_button                        = 'middle'
c.tabs.favicons.scale                            = 1.0
c.tabs.favicons.show                             = 'never'
c.tabs.indicator.padding                         = {'top': 0, 'bottom': 0, 'left': 0, 'right': 4}
c.tabs.last_close                                = 'ignore'
c.tabs.mousewheel_switching                      = True
c.tabs.new_position.related                      = 'next'
c.tabs.new_position.unrelated                    = 'last'
c.tabs.padding                                   = {'top': 3, 'bottom': 3, 'left': 3, 'right': 3}
c.tabs.position                                  = 'top'
c.tabs.select_on_remove                          = 'next'
c.tabs.show                                      = 'multiple'
c.tabs.show_switching_delay                      = 800
c.tabs.tabs_are_windows                          = False
c.tabs.title.alignment                           = 'left'
c.tabs.title.format                              = '{index}: {title}'
c.tabs.title.format_pinned                       = '{index}'
c.tabs.width                                     = '20%'
c.tabs.indicator.width                           = 0
c.tabs.wrap                                      = True
c.url.auto_search                                = 'naive'
c.url.start_pages                                = '~/.config/qutebrowser/resources/index.html'
c.url.default_page                               = '~/.config/qutebrowser/resources/index.html'
c.url.searchengines                              = {'DEFAULT': 'https://www.google.com/search?hl=en&q={}'}
c.window.title_format                            = '{perc}{title}{title_sep}qutebrowser'
c.zoom.default                                   = '100%'
c.zoom.levels                                    = ['25%', '33%', '50%', '67%', '75%', '90%', '100%', '110%', '125%', '150%', '175%', '200%', '250%', '300%', '400%', '500%']
