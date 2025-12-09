.class public abstract LH3/g;
.super LH3/e;
.source "SourceFile"


# instance fields
.field public final h:LG3/d;


# direct methods
.method public constructor <init>(LG3/d;Ll3/i;ILF3/a;)V
    .locals 0

    invoke-direct {p0, p2, p3, p4}, LH3/e;-><init>(Ll3/i;ILF3/a;)V

    iput-object p1, p0, LH3/g;->h:LG3/d;

    return-void
.end method

.method public static synthetic k(LH3/g;LG3/e;Ll3/e;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, LH3/e;->f:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_3

    invoke-interface {p2}, Ll3/e;->a()Ll3/i;

    move-result-object v0

    iget-object v1, p0, LH3/e;->e:Ll3/i;

    invoke-static {v0, v1}, LD3/E;->e(Ll3/i;Ll3/i;)Ll3/i;

    move-result-object v1

    invoke-static {v1, v0}, Lv3/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1, p2}, LH3/g;->n(LG3/e;Ll3/e;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lh3/n;->a:Lh3/n;

    return-object p0

    :cond_1
    sget-object v2, Ll3/f;->d:Ll3/f$b;

    invoke-interface {v1, v2}, Ll3/i;->d(Ll3/i$c;)Ll3/i$b;

    move-result-object v3

    invoke-interface {v0, v2}, Ll3/i;->d(Ll3/i$c;)Ll3/i$b;

    move-result-object v0

    invoke-static {v3, v0}, Lv3/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1, v1, p2}, LH3/g;->m(LG3/e;Ll3/i;Ll3/e;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_2

    return-object p0

    :cond_2
    sget-object p0, Lh3/n;->a:Lh3/n;

    return-object p0

    :cond_3
    invoke-super {p0, p1, p2}, LH3/e;->c(LG3/e;Ll3/e;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_4

    return-object p0

    :cond_4
    sget-object p0, Lh3/n;->a:Lh3/n;

    return-object p0
.end method

.method public static synthetic l(LH3/g;LF3/r;Ll3/e;)Ljava/lang/Object;
    .locals 1

    new-instance v0, LH3/q;

    invoke-direct {v0, p1}, LH3/q;-><init>(LF3/t;)V

    invoke-virtual {p0, v0, p2}, LH3/g;->n(LG3/e;Ll3/e;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lh3/n;->a:Lh3/n;

    return-object p0
.end method


# virtual methods
.method public c(LG3/e;Ll3/e;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, LH3/g;->k(LH3/g;LG3/e;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public f(LF3/r;Ll3/e;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, LH3/g;->l(LH3/g;LF3/r;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final m(LG3/e;Ll3/i;Ll3/e;)Ljava/lang/Object;
    .locals 8

    invoke-interface {p3}, Ll3/e;->a()Ll3/i;

    move-result-object v0

    invoke-static {p1, v0}, LH3/f;->a(LG3/e;Ll3/i;)LG3/e;

    move-result-object v2

    new-instance v4, LH3/g$a;

    const/4 p1, 0x0

    invoke-direct {v4, p0, p1}, LH3/g$a;-><init>(LH3/g;Ll3/e;)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v1, p2

    move-object v5, p3

    invoke-static/range {v1 .. v7}, LH3/f;->c(Ll3/i;Ljava/lang/Object;Ljava/lang/Object;Lu3/p;Ll3/e;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lh3/n;->a:Lh3/n;

    return-object p1
.end method

.method public abstract n(LG3/e;Ll3/e;)Ljava/lang/Object;
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LH3/g;->h:LG3/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, LH3/e;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
