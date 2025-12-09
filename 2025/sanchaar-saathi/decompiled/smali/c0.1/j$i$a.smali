.class public final Lc0/j$i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG3/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc0/j$i;->o(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lc0/j;


# direct methods
.method public constructor <init>(Lc0/j;)V
    .locals 0

    iput-object p1, p0, Lc0/j$i$a;->e:Lc0/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lh3/n;Ll3/e;)Ljava/lang/Object;
    .locals 1

    iget-object p1, p0, Lc0/j$i$a;->e:Lc0/j;

    invoke-static {p1}, Lc0/j;->e(Lc0/j;)Lc0/k;

    move-result-object p1

    invoke-virtual {p1}, Lc0/k;->a()Lc0/v;

    move-result-object p1

    instance-of p1, p1, Lc0/l;

    if-nez p1, :cond_1

    iget-object p1, p0, Lc0/j$i$a;->e:Lc0/j;

    const/4 v0, 0x1

    invoke-static {p1, v0, p2}, Lc0/j;->m(Lc0/j;ZLl3/e;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lh3/n;->a:Lh3/n;

    return-object p1

    :cond_1
    sget-object p1, Lh3/n;->a:Lh3/n;

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;Ll3/e;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lh3/n;

    invoke-virtual {p0, p1, p2}, Lc0/j$i$a;->a(Lh3/n;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
