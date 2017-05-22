# encoding: utf-8
module Holidays
  # This file is generated by the Ruby Holidays gem.
  #
  # Definitions loaded: definitions/is.yaml
  #
  # All the definitions are available at https://github.com/holidays/holidays
  module IS # :nodoc:
    def self.defined_regions
      [:is]
    end

    def self.holidays_by_month
      {
              0 => [{:function => "easter(year)", :function_arguments => [:year], :function_modifier => -48, :name => "Bolludagur", :regions => [:is]},
            {:function => "easter(year)", :function_arguments => [:year], :function_modifier => -47, :name => "Sprengidagur", :regions => [:is]},
            {:function => "easter(year)", :function_arguments => [:year], :function_modifier => -46, :name => "Öskudagur", :regions => [:is]},
            {:function => "easter(year)", :function_arguments => [:year], :function_modifier => -7, :name => "Pálmasunnudagur", :regions => [:is]},
            {:function => "easter(year)", :function_arguments => [:year], :function_modifier => -3, :name => "Skírdagur", :regions => [:is]},
            {:function => "easter(year)", :function_arguments => [:year], :function_modifier => -2, :name => "Föstudaginn langi", :regions => [:is]},
            {:function => "easter(year)", :function_arguments => [:year], :name => "Páskadagur", :regions => [:is]},
            {:function => "easter(year)", :function_arguments => [:year], :function_modifier => 1, :name => "Annar í páskum", :regions => [:is]},
            {:function => "easter(year)", :function_arguments => [:year], :function_modifier => 39, :name => "Uppstigningardagur", :regions => [:is]},
            {:function => "easter(year)", :function_arguments => [:year], :function_modifier => 49, :name => "Hvítasunnudagur", :regions => [:is]},
            {:function => "easter(year)", :function_arguments => [:year], :function_modifier => 50, :name => "Annar í hvítasunnu", :regions => [:is]}],
      1 => [{:mday => 1, :name => "Nýársdagur", :regions => [:is]},
            {:mday => 6, :name => "Þrettándinn", :regions => [:is]},
            {:mday => 19, :type => :informal, :name => "Bóndadagur", :regions => [:is]}],
      2 => [{:mday => 18, :type => :informal, :name => "Konudagur", :regions => [:is]}],
      4 => [{:function => "is_sumardagurinn_fyrsti(year)", :function_arguments => [:year], :name => "Sumardagurinn fyrsti", :regions => [:is]}],
      5 => [{:mday => 1, :name => "Verkalýðsdagurinn", :regions => [:is]},
            {:mday => 13, :name => "Mæðradagurinn", :regions => [:is]}],
      6 => [{:mday => 3, :type => :informal, :name => "Sjómannadagurinn", :regions => [:is]},
            {:mday => 17, :name => "Lýðveldisdagurinn", :regions => [:is]}],
      8 => [{:wday => 1, :week => 1, :name => "Frídagur verslunarmanna", :regions => [:is]}],
      11 => [{:mday => 16, :name => "Dagur íslenskrar tungu", :regions => [:is]}],
      12 => [{:mday => 24, :name => "Jól", :regions => [:is]},
            {:mday => 25, :name => "Jól", :regions => [:is]},
            {:mday => 26, :name => "Jól", :regions => [:is]},
            {:mday => 31, :name => "Gamlárskvöld", :regions => [:is]}]
      }
    end

    def self.custom_methods
      {
        "is_sumardagurinn_fyrsti(year)" => Proc.new { |year|
date = Date.civil(year,4,18)
if date.wday < 4
  date += (4 - date.wday)
else
  date += (11 - date.wday)
end
date
},


      }
    end
  end
end
