.class public final Lc0/j$d$c;
.super Ln3/k;
.source "SourceFile"

# interfaces
.implements Lu3/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc0/j$d;->o(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public i:I

.field public synthetic j:Ljava/lang/Object;

.field public final synthetic k:Lc0/v;


# direct methods
.method public constructor <init>(Lc0/v;Ll3/e;)V
    .locals 0

    iput-object p1, p0, Lc0/j$d$c;->k:Lc0/v;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ln3/k;-><init>(ILl3/e;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lc0/v;

    check-cast p2, Ll3/e;

    invoke-virtual {p0, p1, p2}, Lc0/j$d$c;->s(Lc0/v;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final j(Ljava/lang/Object;Ll3/e;)Ll3/e;
    .locals 2

    new-instance v0, Lc0/j$d$c;

    iget-object v1, p0, Lc0/j$d$c;->k:Lc0/v;

    invoke-direct {v0, v1, p2}, Lc0/j$d$c;-><init>(Lc0/v;Ll3/e;)V

    iput-object p1, v0, Lc0/j$d$c;->j:Ljava/lang/Object;

    return-object v0
.end method

.method public final o(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    iget v0, p0, Lc0/j$d$c;->i:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lh3/i;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lc0/j$d$c;->j:Ljava/lang/Object;

    check-cast p1, Lc0/v;

    instance-of v0, p1, Lc0/e;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lc0/v;->a()I

    move-result p1

    iget-object v0, p0, Lc0/j$d$c;->k:Lc0/v;

    invoke-virtual {v0}, Lc0/v;->a()I

    move-result v0

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ln3/b;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final s(Lc0/v;Ll3/e;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lc0/j$d$c;->j(Ljava/lang/Object;Ll3/e;)Ll3/e;

    move-result-object p1

    check-cast p1, Lc0/j$d$c;

    sget-object p2, Lh3/n;->a:Lh3/n;

    invoke-virtual {p1, p2}, Lc0/j$d$c;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
