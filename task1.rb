class User

	attr_accessor :first_name, :last_name, :email

	def initialize(first_name, last_name, email)
		@first_name = first_name
		@last_name = last_name
		@email = email
	end

	def full_name
		"#{first_name} #{last_name}"
	end

	def is_valid_email?
		email =~/\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i ? true : false
	end

	def errors
		@errors = []
		validate_first_name
		validate_last_name
		validate_email
		@errors
	end

	def valid?
		errors.empty?
	end

	private

	def validate_first_name
		@errors << 'first_name can not be empty' if @first_name.nil? || @first_name.empty?
        @errors << 'first_name can not a String' unless @first_name.instance_of?(String)
        @errors << 'first_name very short' if @first_name.to_s.size < 3
	end

	def validate_last_name
		@errors << 'last_name can not be empty' if @last_name.nil? || @last_name.empty?
		@errors << 'last_name can not a String' unless @last_name.instance_of?(String)
        @errors << 'last_name very short' if @last_name.to_s.size < 3
	end

	def validate_email
		@errors << 'email can not be empty' if email.nil? || @email.empty?
        @errors << 'email can not a String' unless @email.instance_of?(String)
        @errors << 'email very short' if @email.to_s.size < 3
	end
end

u1 = User.new(first_name: 'John', last_name: nil, email: 'Doe.Johngmailgmail.com')
puts "First name: #{u1.first_name}" 
puts "Last name: #{u1.last_name}"
puts "Email: #{u1.email}" 
puts "Full name: #{u1.full_name}"
puts "Valid_email: #{u1.is_valid_email?}" 
puts "User is valid: #{u1.valid?}" 
puts ''\

u1.last_name = 'Doe'
u1.email = 'Doe.Johngmail@gmail.com'
puts "Valid_email: #{u1.is_valid_email?}" 
puts "Errors: #{u1.errors}"