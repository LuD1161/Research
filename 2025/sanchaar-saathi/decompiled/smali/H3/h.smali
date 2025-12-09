.class public final LH3/h;
.super LH3/g;
.source "SourceFile"


# direct methods
.method public constructor <init>(LG3/d;Ll3/i;ILF3/a;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, LH3/g;-><init>(LG3/d;Ll3/i;ILF3/a;)V

    return-void
.end method

.method public synthetic constructor <init>(LG3/d;Ll3/i;ILF3/a;ILv3/g;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 1
    sget-object p2, Ll3/j;->e:Ll3/j;

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    const/4 p3, -0x3

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    .line 2
    sget-object p4, LF3/a;->e:LF3/a;

    .line 3
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, LH3/h;-><init>(LG3/d;Ll3/i;ILF3/a;)V

    return-void
.end method


# virtual methods
.method public g(Ll3/i;ILF3/a;)LH3/e;
    .locals 2

    new-instance v0, LH3/h;

    iget-object v1, p0, LH3/g;->h:LG3/d;

    invoke-direct {v0, v1, p1, p2, p3}, LH3/h;-><init>(LG3/d;Ll3/i;ILF3/a;)V

    return-object v0
.end method

.method public n(LG3/e;Ll3/e;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LH3/g;->h:LG3/d;

    invoke-interface {v0, p1, p2}, LG3/d;->c(LG3/e;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lh3/n;->a:Lh3/n;

    return-object p1
.end method
