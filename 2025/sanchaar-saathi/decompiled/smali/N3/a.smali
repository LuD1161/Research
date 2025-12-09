.class public LN3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LT2/a;
.implements LY2/j$c;


# instance fields
.field public c:LY2/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachedToEngine(LT2/a$b;)V
    .locals 2

    new-instance v0, LY2/j;

    invoke-virtual {p1}, LT2/a$b;->b()LY2/b;

    move-result-object p1

    const-string v1, "flutter_native_splash"

    invoke-direct {v0, p1, v1}, LY2/j;-><init>(LY2/b;Ljava/lang/String;)V

    iput-object v0, p0, LN3/a;->c:LY2/j;

    invoke-virtual {v0, p0}, LY2/j;->e(LY2/j$c;)V

    return-void
.end method

.method public onDetachedFromEngine(LT2/a$b;)V
    .locals 1

    iget-object p1, p0, LN3/a;->c:LY2/j;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, LY2/j;->e(LY2/j$c;)V

    return-void
.end method

.method public onMethodCall(LY2/i;LY2/j$d;)V
    .locals 1

    iget-object p1, p1, LY2/i;->a:Ljava/lang/String;

    const-string v0, "getPlatformVersion"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Android "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, LY2/j$d;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {p2}, LY2/j$d;->c()V

    :goto_0
    return-void
.end method
