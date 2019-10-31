#nested array: an array of arrays
arr = [[1,2,3],[4,5,6]]
puts arr[0][1]

#nested hash: a has of hashes

phones = {
  iphonex:{year:2017, touch:"yes"},
  blackberry:{year:2000, touch:"no"}
}
puts phones[:blackberry][:touch]
