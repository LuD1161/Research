.class public final Lc0/y$a;
.super Ln3/k;
.source "SourceFile"

# interfaces
.implements Lu3/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc0/y;->a(Lc0/x;Ll3/e;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public i:I

.field public synthetic j:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ll3/e;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Ln3/k;-><init>(ILl3/e;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lc0/r;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    check-cast p3, Ll3/e;

    invoke-virtual {p0, p1, p2, p3}, Lc0/y$a;->s(Lc0/r;ZLl3/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final o(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lc0/y$a;->i:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lh3/i;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lh3/i;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lc0/y$a;->j:Ljava/lang/Object;

    check-cast p1, Lc0/r;

    iput v2, p0, Lc0/y$a;->i:I

    invoke-interface {p1, p0}, Lc0/r;->e(Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method

.method public final s(Lc0/r;ZLl3/e;)Ljava/lang/Object;
    .locals 0

    new-instance p2, Lc0/y$a;

    invoke-direct {p2, p3}, Lc0/y$a;-><init>(Ll3/e;)V

    iput-object p1, p2, Lc0/y$a;->j:Ljava/lang/Object;

    sget-object p1, Lh3/n;->a:Lh3/n;

    invoke-virtual {p2, p1}, Lc0/y$a;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
