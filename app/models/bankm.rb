require 'nkf'

class Bankm < ActiveRecord::Base
  self.table_name = 'bankm'
  before_validation { self.bank_k  = NKF.nkf('-w -Z4 -x', bank_k) }
  validates :entmcn,  length: { maximum: 20 }
  validates :entclt,  length: { maximum: 20 }
  validates :edtmcn,  length: { maximum: 20 }
  validates :edtclt,  length: { maximum: 20 }
  validates :bank_cd, presence: true, length: { maximum: 04 }, uniqueness: true,
            numericality: true
  validates :bank_j,  presence: true, length: { maximum: 40 }, uniqueness: true,
            format: { with: /\A[\p{Han}\p{Hiragana}\p{Katakana}]+\z/, allow_blank: true, message: 'は漢字、ひらがな、カタカナのいずれかで入力してください' }
  validates :bank_a,  presence: true, length: { maximum: 40 }, uniqueness: true,
            format: { with: /\A[\p{Han}\p{Hiragana}\p{Katakana}]+\z/, allow_blank: true, message: 'は漢字、ひらがな、カタカナのいずれかで入力してください' } 
  validates :bank_k,  presence: true, length: { maximum: 40 }, uniqueness: true,
            format: { with: /\A[\p{Katakana}\ﾞ\u30fc]+\z/, allow_blank: true, message: 'はカタカナで入力してください' }
end
