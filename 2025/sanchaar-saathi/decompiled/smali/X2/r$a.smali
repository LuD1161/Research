.class public LX2/r$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LY2/j$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LX2/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:LX2/r;


# direct methods
.method public constructor <init>(LX2/r;)V
    .locals 0

    iput-object p1, p0, LX2/r$a;->c:LX2/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMethodCall(LY2/i;LY2/j$d;)V
    .locals 5

    iget-object v0, p0, LX2/r$a;->c:LX2/r;

    invoke-static {v0}, LX2/r;->a(LX2/r;)LX2/r$b;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, LY2/i;->a:Ljava/lang/String;

    iget-object p1, p1, LY2/i;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, 0x0

    const-string v2, "error"

    const-string v3, "ProcessText.processTextAction"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string p1, "ProcessText.queryTextActions"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-interface {p2}, LY2/j$d;->c()V

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object p1, p0, LX2/r$a;->c:LX2/r;

    invoke-static {p1}, LX2/r;->a(LX2/r;)LX2/r$b;

    move-result-object p1

    invoke-interface {p1}, LX2/r$b;->b()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p2, p1}, LY2/j$d;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v2, p1, v1}, LY2/j$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :try_start_1
    check-cast p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v4, p0, LX2/r$a;->c:LX2/r;

    invoke-static {v4}, LX2/r;->a(LX2/r;)LX2/r$b;

    move-result-object v4

    invoke-interface {v4, v0, v3, p1, p2}, LX2/r$b;->a(Ljava/lang/String;Ljava/lang/String;ZLY2/j$d;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v2, p1, v1}, LY2/j$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
