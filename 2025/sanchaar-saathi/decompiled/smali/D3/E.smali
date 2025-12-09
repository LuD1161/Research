.class public abstract LD3/E;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ll3/i;Ll3/i;Z)Ll3/i;
    .locals 3

    invoke-static {p0}, LD3/E;->c(Ll3/i;)Z

    move-result v0

    invoke-static {p1}, LD3/E;->c(Ll3/i;)Z

    move-result v1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    invoke-interface {p0, p1}, Ll3/i;->h(Ll3/i;)Ll3/i;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lv3/w;

    invoke-direct {v0}, Lv3/w;-><init>()V

    iput-object p1, v0, Lv3/w;->e:Ljava/lang/Object;

    sget-object p1, Ll3/j;->e:Ll3/j;

    new-instance v2, LD3/E$b;

    invoke-direct {v2, v0, p2}, LD3/E$b;-><init>(Lv3/w;Z)V

    invoke-interface {p0, p1, v2}, Ll3/i;->H(Ljava/lang/Object;Lu3/p;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ll3/i;

    if-eqz v1, :cond_1

    iget-object p2, v0, Lv3/w;->e:Ljava/lang/Object;

    check-cast p2, Ll3/i;

    sget-object v1, LD3/E$a;->f:LD3/E$a;

    invoke-interface {p2, p1, v1}, Ll3/i;->H(Ljava/lang/Object;Lu3/p;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lv3/w;->e:Ljava/lang/Object;

    :cond_1
    iget-object p1, v0, Lv3/w;->e:Ljava/lang/Object;

    check-cast p1, Ll3/i;

    invoke-interface {p0, p1}, Ll3/i;->h(Ll3/i;)Ll3/i;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Ll3/i;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static final c(Ll3/i;)Z
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, LD3/E$c;->f:LD3/E$c;

    invoke-interface {p0, v0, v1}, Ll3/i;->H(Ljava/lang/Object;Lu3/p;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final d(LD3/I;Ll3/i;)Ll3/i;
    .locals 1

    invoke-interface {p0}, LD3/I;->p()Ll3/i;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, LD3/E;->a(Ll3/i;Ll3/i;Z)Ll3/i;

    move-result-object p0

    invoke-static {}, LD3/V;->a()LD3/F;

    move-result-object p1

    if-eq p0, p1, :cond_0

    sget-object p1, Ll3/f;->d:Ll3/f$b;

    invoke-interface {p0, p1}, Ll3/i;->d(Ll3/i$c;)Ll3/i$b;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, LD3/V;->a()LD3/F;

    move-result-object p1

    invoke-interface {p0, p1}, Ll3/i;->h(Ll3/i;)Ll3/i;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static final e(Ll3/i;Ll3/i;)Ll3/i;
    .locals 1

    invoke-static {p1}, LD3/E;->c(Ll3/i;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, Ll3/i;->h(Ll3/i;)Ll3/i;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, LD3/E;->a(Ll3/i;Ll3/i;Z)Ll3/i;

    move-result-object p0

    return-object p0
.end method

.method public static final f(Ln3/e;)LD3/L0;
    .locals 2

    :cond_0
    instance-of v0, p0, LD3/S;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    invoke-interface {p0}, Ln3/e;->l()Ln3/e;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v1

    :cond_2
    instance-of v0, p0, LD3/L0;

    if-eqz v0, :cond_0

    check-cast p0, LD3/L0;

    return-object p0
.end method

.method public static final g(Ll3/e;Ll3/i;Ljava/lang/Object;)LD3/L0;
    .locals 2

    instance-of v0, p0, Ln3/e;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, LD3/M0;->e:LD3/M0;

    invoke-interface {p1, v0}, Ll3/i;->d(Ll3/i$c;)Ll3/i$b;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast p0, Ln3/e;

    invoke-static {p0}, LD3/E;->f(Ln3/e;)LD3/L0;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2}, LD3/L0;->U0(Ll3/i;Ljava/lang/Object;)V

    :cond_1
    return-object p0

    :cond_2
    return-object v1
.end method
