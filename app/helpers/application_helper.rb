module ApplicationHelper
  def default_meta_tags
    {
      site: 'エンジニアみくじ',
      title: 'エンジニアみくじ',
      reverse: true,
      charset: 'utf-8',
      description: 'あなたの今日のエンジニア運を占います',
      keywords: 'エンジニア,おみくじ,くじ,診断メーカー',
      canonical: request.original_url,
      separator: '|',
      icon: [
        { href: image_url('icon.png') },
        { href: image_url('icon.png'), rel: 'apple-touch-icon', sizes: '180x180', type: 'image/png' },
      ],
      og:{
        site_name: :site,
        title: :title,
        description: :description,
        type: 'website',
        url: request.original_url,
        image: image_url('ogp.png'),
        local: 'ja-JP'
      },
      twitter: {
        card: 'summary_large_image',
        site: '@satoeri_63b',
        image: image_url('ogp.png')
      }
    }
  end
end
