# Making a language is hard

stack = Deque(Int32)
struct Cry
    getter tokName : String
    getter tokCode : Int32
    def initialize(@tokName : String,@tokCode : Int32)
    end
    def tokname(nme : String)
        tokName = nme
        self
    end
    def tokcode(cde : Int32)
        tokCode = cde
        self
    end
end
enum CryTypes
    Push
    Plus
    Minus
    Write
end

cr = Cry.new(tokName : String, tokCode : Int32)

def lex(src : String)
    i = 0
    code = src.split(" ")
    while i < code.size
        puts code[i]
        case code[i]
            when "write"
                cr.tokname("Write")
                cr.tokcode(CryTypes::Write.value)
        end
        i += 1
    end
end

lex "34 35 + write"

