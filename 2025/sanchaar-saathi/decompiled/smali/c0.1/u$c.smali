.class public final Lc0/u$c;
.super Ln3/k;
.source "SourceFile"

# interfaces
.implements Lu3/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc0/u;-><init>(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public i:I


# direct methods
.method public constructor <init>(Ll3/e;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Ln3/k;-><init>(ILl3/e;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LG3/e;

    check-cast p2, Ll3/e;

    invoke-virtual {p0, p1, p2}, Lc0/u$c;->s(LG3/e;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final j(Ljava/lang/Object;Ll3/e;)Ll3/e;
    .locals 0

    new-instance p1, Lc0/u$c;

    invoke-direct {p1, p2}, Lc0/u$c;-><init>(Ll3/e;)V

    return-object p1
.end method

.method public final o(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    iget v0, p0, Lc0/u$c;->i:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lh3/i;->b(Ljava/lang/Object;)V

    sget-object p1, Lh3/n;->a:Lh3/n;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final s(LG3/e;Ll3/e;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lc0/u$c;->j(Ljava/lang/Object;Ll3/e;)Ll3/e;

    move-result-object p1

    check-cast p1, Lc0/u$c;

    sget-object p2, Lh3/n;->a:Lh3/n;

    invoke-virtual {p1, p2}, Lc0/u$c;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
