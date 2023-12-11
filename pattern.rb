class Pattern
    # First pattern1
    # *
    # **
    # ***
    # ****
    # *****
    def pattern1(n)
        for i in 1..n
            for j in 1..i
                print "*"
            end
            print "\n"
        end
    end

    # Second pattern2
    # *****
    # ****
    # ***
    # **
    # *
    def pattern2(n)
        while n>0
            for i in 1..n
                print "*"
            end
            print "\n"
            n-=1
        end
    end


    # Three pattern3
    # 1
    # 12
    # 123
    # 1234
    # 12345
    def pattern3(n)
        for i in 1..n
            for j in 1..i
                print j
            end
            print "\n"
        end
    end

    
    # Fout pattern4
    # 12345
    # 1234
    # 123
    # 12
    # 1
    def pattern4(n)
        while n>0
            for i in 1..n
                print i
            end
            print "\n"
            n-=1
        end
    end


    # Five pattern5
    # 54321
    # 4321
    # 321
    # 21
    # 1
    def pattern5(n)
        while n>0
            for i in 1..n
                if i==1
                    s=n
                end
                print s
                s-=1
            end
            print "\n"
            n-=1
        end
    end



#     Six pattern6
#      1
#     12
#    123
#   1234
#  12345
    def pattern6(n)
        for i in 1..n
            for s in 1..n
                print " "
            end
            for j in 1..i
                print j
            end
            print "\n"
            n-=1
        end
    end


#     Seven pattern7
#      *
#     * *
#    * * *
#   * * * *
#  * * * * *
    def pattern7(n)
        for i in 1..n
            for s in 1..n
                print " "
            end
            for j in 1..i
                print " *"
            end
            print "\n"
            n-=1
        end
    end



#     Eight pattern8
#    * * * * * * *
#     *         *
#      *       *
#       *     *
#        *   *
#         * *
#          *    
    def pattern8(n)
        for il in 1..n+2
            print "* "
            j=0
            val=n
        end
        print "\n"
        while n>0
            j+=1
            for i in 1..j
                print " "
            end
            print "*"
            sy=n*2-1
            while sy!=0
                print " "
                sy-=1
            end
            print "*\n"
            if n==1
                for s in 1..val+1
                    print " "
                end
                print "*\n"
            end
            n-=1
        end
       
    end



    # Nine pattern9
    # *
    # **
    # * *
    # *  *
    # *   *
    # *    *
    # *     *
    # ********
    def pattern9(n)
        print "*\n"
        for i in 0..n
            print "*"
            for j in 1..i
                print " "
            end
            print "*\n"
        end
        for l in 0..n+2
            print "*"
        end
    end



#     Ten pattern10
#       *
#      * *
#     *   *
#    *     *
#   *       *
#  *         *
# * * * * * * *
    def pattern10(n)
        for i in 1..n
            if i==1
                val=n
                for s in 1..n+1
                    print " "
                end
                print "*\n"
            end
            for s in 1..n
                print " "
            end
            print "*"
            sy=i*2-1
            while sy!=0
                print " "
                sy-=1
            end
            print "*\n"
            n-=1
        end
        for i in 1..val+2
            print "* "
        end
    end
end
# new object pat
pat=Pattern.new  
while true
    print "
        \n
        Pattern:1\tPattern:2\n
        Pattern:3\tPattern:4\n
        Pattern:5\tPattern:6\n
        Pattern:7\tPattern:8\n
        Pattern:9\tPattern:10\n
        exit:0\n
        Enter your cho:"
    cho=gets.to_i
    case cho
    when 0
        break
    when 1
        print "\nEnter number of n:"
        pat.pattern1(gets.to_i)
    when 2
        print "\nEnter number of n:"
        pat.pattern2(gets.to_i)
    when 3 
        print "\nEnter number of n:"
        pat.pattern3(gets.to_i)
    when 4
        print "\nEnter number of n:"
        pat.pattern4(gets.to_i)
    when 5
        print "\nEnter number of n:"
        pat.pattern5(gets.to_i)
    when 6
        print "\nEnter number of n:"
        pat.pattern6(gets.to_i)
    when 7
        print "\nEnter number of n:"
        pat.pattern7(gets.to_i)
    when 8
        print "\nEnter number of n:"
        pat.pattern8(gets.to_i)
    when 9
        print "\nEnter number of n:"
        pat.pattern9(gets.to_i)
    when 10
        print "\nEnter number of n:"
        pat.pattern10(gets.to_i)
    else
        puts "your cho wrong"
    end
end