Registrant.destroy_all
User.destroy_all

Registrant.create([
	{
		id: SecureRandom.urlsafe_base64,
		email: "bruno@wu.org",
		expires_at: Time.now + 4.hours
	},
	{
		id: SecureRandom.urlsafe_base64,
		email: "bill@wu.org",
		expires_at: Time.now + 4.hours
	},
	{
		id: SecureRandom.urlsafe_base64,
		email: "biff@wu.org",
		expires_at: Time.now + 4.hours
	}
])



User.create([
	{
		id: SecureRandom.urlsafe_base64,
		name: "Bel",
		email: "bel@wu.org",
		password: "123",
		password_confirmation: "123",
	},
	{
		id: SecureRandom.urlsafe_base64,
		name: "Biv",
		email: "biv@wu.org",
		password: "123",
		password_confirmation: "123",
	},
	{
		id: SecureRandom.urlsafe_base64,
		name: "Devol",
		email: "devol@wu.org",
		password: "123",
		password_confirmation: "123",
	}
])

