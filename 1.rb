require "prawn"
require "prawn/table"


Prawn::Document.generate("hello.pdf") do

  font_families["chinese"] = {
    :normal => { :file => "chinese.ttf" },
  }
  fallback_fonts ["chinese"]

  person_info = make_table([["姓名", "    ", "性别", "  ", "出生日期", "      ", "邮箱", "   "], ["现住址", "  ", "电话", "    "]])
  person = make_table([[{:content => "申请人", :colspan => 3}], [person_info]])

  table([["往           国家/地区使用          申请公证用途: 定居/探亲/工作/学习/结婚/其它"]])
  table([["申请人", person_info]])
  table([["工作单位名称, 地址"], ["请在下列需要办理"]], :column_widths => [540])
=begin
  table([[person], ["工作单位名称, 地址"], ["请在下列需要办理"],
          ["申办何种公证", [["xx"], ["yy"]]],
          ["如办出生"],
          ["父母，配偶"],
          ["翻译成何语种(  )，公证书份数(  )份"],
          ["是否要求认证(  ),   申请人提交照片(   )张"],
          ["代办人姓名", "与申请人关系", "电话", "联系地址"],
          ["   ", "  ", "  ", "  "],
          ["其它需要说明的"],
          ["申请日期: "]
        ])
  #table [["xxeee", "gex"], ["apply", person_table]]
=end
end

system("open hello.pdf")

