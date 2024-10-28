local status_ok, render_markdown = pcall(require, "render-markdown")
if not status_ok then
	return
end

render_markdown.setup {
	file_types = { 'markdown' },
	heading = {
        enabled = true,
        sign = false,
        position = 'inline',
        icons = { '󰲡 ', '󰲣 ', '󰲥 ', '󰲧 ', '󰲩 ', '󰲫 ' },
        signs = { '󰫎 ' },
        width = 'block',
        left_margin = 0.5,
        left_pad = 0.2,
        right_pad = 0.2,
        min_width = 0,
        border = true,
        border_virtual = false,
        border_prefix = false,
        above = '▄',
        below = '▀',
        backgrounds = {
            'RenderMarkdownH1Bg',
            'RenderMarkdownH2Bg',
            'RenderMarkdownH3Bg',
            'RenderMarkdownH4Bg',
            'RenderMarkdownH5Bg',
            'RenderMarkdownH6Bg',
        },
        foregrounds = {
            'RenderMarkdownH1',
            'RenderMarkdownH2',
            'RenderMarkdownH3',
            'RenderMarkdownH4',
            'RenderMarkdownH5',
            'RenderMarkdownH6',
        },
    },
}
