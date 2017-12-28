/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libft.h                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gmonnier <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/11/13 10:41:48 by gmonnier          #+#    #+#             */
/*   Updated: 2017/11/17 12:14:19 by gmonnier         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFT_H
# define LIBFT_H

# include <stdlib.h>
# include <string.h>
# include <unistd.h>

int					ft_isdigit(int c);
int					ft_ischarset(char c, char *charset);
int					ft_atoi(const char *str);
char				*ft_itoa(int n);
char				*ft_itoa_base(int value, char *base);
void				ft_putchar(char c);
void				ft_putstr(char const *s);
void				*ft_bzero(void *s, size_t n);
void				*ft_memalloc(size_t size);
void				*ft_memset(void *s, int c, size_t n);
void				ft_strclr(char *s);
char				*ft_strjoin(char const *s1, char const *s2);
char				*ft_strnew(size_t size);
char				*ft_strsub(char const *s, unsigned int start, size_t len);
char				*ft_strcat(char *dest, const char *src);
int					ft_strcmp(const char *s1, const char *s2);
int					ft_strncmp(const char *s1, const char *s2, size_t n);
char				*ft_strcpy(char *dest, const char *src);
char				*ft_strdup(const char *src);
size_t				ft_strlen(const char *str);
#endif
