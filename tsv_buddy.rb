# Module that can be included (mixin) to take and output TSV data
module TsvBuddy
  # take_tsv: converts a String with TSV data into @data
  # parameter: tsv - a String in TSV format
  # 將tsv每行轉成@data,@data是一個Array of Hash
  def take_tsv(tsv)
    @data = []
    tsv_data = tsv.split("\n")
    title = tsv_data[0].split("\t")
    hash = Hash.new
    for i in 2..tsv_data.length
      string = tsv_data[i-1].split("\t")
      hash = {title[0] => string[0] , title[1] => string[1] , title[2] => string[2] , title[3] => string[3] , title[4] => string[4] , title[5] => string[5]}
      @data.push(hash)
    end
    @data
  end

  # to_tsv: converts @data into tsv string
  # returns: String in TSV format
  def to_tsv()
    text = ""
    for i in 0..@data[0].length-1
      text << @data[0].keys[i]+"\t"
    end
    text.chop!
    for j in 0..@data.length-1
      text << "\n"
      for k in 0..@data[j].length-1
          text << @data[j].values[k]+"\t"
      end
      text.chop!
    end
    text << "\n"
    text
  end
end
