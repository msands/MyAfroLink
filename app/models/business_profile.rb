class BusinessProfile < ActiveRecord::Base
  searchkick word_middle: [:name], word_start: [:name], text_start: [:name], text_middle: [:name], text_end: [:name]

  CATEGORIES = ["ELECTRONICS", "Home Electronics", "TV, DVD, LCDs", "Mobile & Tablets", "Technical Services", "EVENTS & NOTICES", "Auction Announcements", "Business Events", "Business Notices", "Children Events", "Legal & Public Notices", "Personal", "FASHION", "Bags", "Beauty Products", "Clothing M/F", "Jewelry", "Shoes M/F", "Watches", "HEALTH & FITNESS", "Activities", "Fitness", "Gym", "Hospitals & Clinics", "Parlours", "Saloons", "HOME & LIFESTYLE", "Art & Photography", "Entertainment", "Fittings", "Home Furniture", "Office Furniture", "Used Things", "JOBS", "Accounts Jobs", "Cleaning & Washing", "Data Entry", "Design & Code", "Finance Jobs", "Marketing Jobs", "MATRIMONIALS", "Brides", "Casual Dating", "Dating", "Friendship", "Grooms", "Open Relationship", "MISCELLANEOUS", "Classic & Antique", "Kids Stuff", "Music Equipment", "Pets Stuff", "Scrape", "Second Hand", "Farms", "Home for rent", "Hotels", "Land for sale", "Offices for rent", "Shops for rent", "SERVICES", "Cleaning Services", "Educational", "Food Services", "Medical", "Office & Home Removals", "Technical", "VEHICLES", "Cars & Modern", "Fancy Cars", "Kids Bikes", "Motor Bikes", "Vans & Truck"]

  belongs_to :user

  has_attached_file :image, :styles => { large: "600x600>", medium: "400x400>", small: "200x200>", thumb: "100x100>" }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  validates :name, :address, :city, :category, presence: true
end
