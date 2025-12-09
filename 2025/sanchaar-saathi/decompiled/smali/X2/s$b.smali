.class public LX2/s$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LY2/j$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LX2/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:LX2/s;


# direct methods
.method public constructor <init>(LX2/s;)V
    .locals 0

    iput-object p1, p0, LX2/s$b;->c:LX2/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMethodCall(LY2/i;LY2/j$d;)V
    .locals 2

    iget-object v0, p1, LY2/i;->a:Ljava/lang/String;

    iget-object p1, p1, LY2/i;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "get"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "put"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, LY2/j$d;->c()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, LX2/s$b;->c:LX2/s;

    check-cast p1, [B

    invoke-static {v0, p1}, LX2/s;->b(LX2/s;[B)[B

    const/4 p1, 0x0

    invoke-interface {p2, p1}, LY2/j$d;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, LX2/s$b;->c:LX2/s;

    const/4 v0, 0x1

    invoke-static {p1, v0}, LX2/s;->c(LX2/s;Z)Z

    iget-object p1, p0, LX2/s$b;->c:LX2/s;

    invoke-static {p1}, LX2/s;->d(LX2/s;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, LX2/s$b;->c:LX2/s;

    iget-boolean v0, p1, LX2/s;->a:Z

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p1, p2}, LX2/s;->f(LX2/s;LY2/j$d;)LY2/j$d;

    goto :goto_1

    :cond_3
    :goto_0
    iget-object p1, p0, LX2/s$b;->c:LX2/s;

    invoke-static {p1}, LX2/s;->a(LX2/s;)[B

    move-result-object v0

    invoke-static {p1, v0}, LX2/s;->e(LX2/s;[B)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p2, p1}, LY2/j$d;->a(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
