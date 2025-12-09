.class public final Le3/I$k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG3/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le3/I$k;->c(LG3/e;Ll3/e;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic e:LG3/e;


# direct methods
.method public constructor <init>(LG3/e;)V
    .locals 0

    iput-object p1, p0, Le3/I$k$a;->e:LG3/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;Ll3/e;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Le3/I$k$a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le3/I$k$a$a;

    iget v1, v0, Le3/I$k$a$a;->i:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le3/I$k$a$a;->i:I

    goto :goto_0

    :cond_0
    new-instance v0, Le3/I$k$a$a;

    invoke-direct {v0, p0, p2}, Le3/I$k$a$a;-><init>(Le3/I$k$a;Ll3/e;)V

    :goto_0
    iget-object p2, v0, Le3/I$k$a$a;->h:Ljava/lang/Object;

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Le3/I$k$a$a;->i:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lh3/i;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lh3/i;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Le3/I$k$a;->e:LG3/e;

    check-cast p1, Lg0/f;

    invoke-virtual {p1}, Lg0/f;->a()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    iput v3, v0, Le3/I$k$a$a;->i:I

    invoke-interface {p2, p1, v0}, LG3/e;->b(Ljava/lang/Object;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object p1, Lh3/n;->a:Lh3/n;

    return-object p1
.end method
