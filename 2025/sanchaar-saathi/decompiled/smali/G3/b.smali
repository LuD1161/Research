.class public final LG3/b;
.super LG3/c;
.source "SourceFile"


# instance fields
.field public final i:Lu3/p;


# direct methods
.method public constructor <init>(Lu3/p;Ll3/i;ILF3/a;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, LG3/c;-><init>(Lu3/p;Ll3/i;ILF3/a;)V

    .line 5
    iput-object p1, p0, LG3/b;->i:Lu3/p;

    return-void
.end method

.method public synthetic constructor <init>(Lu3/p;Ll3/i;ILF3/a;ILv3/g;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 1
    sget-object p2, Ll3/j;->e:Ll3/j;

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    const/4 p3, -0x2

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    .line 2
    sget-object p4, LF3/a;->e:LF3/a;

    .line 3
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, LG3/b;-><init>(Lu3/p;Ll3/i;ILF3/a;)V

    return-void
.end method


# virtual methods
.method public f(LF3/r;Ll3/e;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, LG3/b$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LG3/b$a;

    iget v1, v0, LG3/b$a;->k:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LG3/b$a;->k:I

    goto :goto_0

    :cond_0
    new-instance v0, LG3/b$a;

    invoke-direct {v0, p0, p2}, LG3/b$a;-><init>(LG3/b;Ll3/e;)V

    :goto_0
    iget-object p2, v0, LG3/b$a;->i:Ljava/lang/Object;

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, LG3/b$a;->k:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, LG3/b$a;->h:Ljava/lang/Object;

    check-cast p1, LF3/r;

    invoke-static {p2}, Lh3/i;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lh3/i;->b(Ljava/lang/Object;)V

    iput-object p1, v0, LG3/b$a;->h:Ljava/lang/Object;

    iput v3, v0, LG3/b$a;->k:I

    invoke-super {p0, p1, v0}, LG3/c;->f(LF3/r;Ll3/e;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    invoke-interface {p1}, LF3/t;->G()Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lh3/n;->a:Lh3/n;

    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "\'awaitClose { yourCallbackOrListener.cancel() }\' should be used in the end of callbackFlow block.\nOtherwise, a callback/listener may leak in case of external cancellation.\nSee callbackFlow API documentation for the details."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public g(Ll3/i;ILF3/a;)LH3/e;
    .locals 2

    new-instance v0, LG3/b;

    iget-object v1, p0, LG3/b;->i:Lu3/p;

    invoke-direct {v0, v1, p1, p2, p3}, LG3/b;-><init>(Lu3/p;Ll3/i;ILF3/a;)V

    return-object v0
.end method
