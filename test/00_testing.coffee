define ->
  describe 'テスト', ->
    it 'が可能であること', ->
      expect(true).to.be true

    it 'でspyが使えること', ->
      spy = sinon.spy()
      spy()
      expect(spy.calledOnce).to.ok()
