.class public final LL2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LT2/a;
.implements LU2/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LL2/e$a;
    }
.end annotation


# static fields
.field public static final f:LL2/e$a;


# instance fields
.field public c:LL2/d;

.field public d:Ldev/fluttercommunity/plus/share/a;

.field public e:LY2/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LL2/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LL2/e$a;-><init>(Lv3/g;)V

    sput-object v0, LL2/e;->f:LL2/e$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachedToActivity(LU2/c;)V
    .locals 2

    const-string v0, "binding"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LL2/e;->d:Ldev/fluttercommunity/plus/share/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "manager"

    invoke-static {v0}, Lv3/l;->n(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-interface {p1, v0}, LU2/c;->a(LY2/l;)V

    iget-object v0, p0, LL2/e;->c:LL2/d;

    if-nez v0, :cond_1

    const-string v0, "share"

    invoke-static {v0}, Lv3/l;->n(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-interface {p1}, LU2/c;->e()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {v1, p1}, LL2/d;->o(Landroid/app/Activity;)V

    return-void
.end method

.method public onAttachedToEngine(LT2/a$b;)V
    .locals 4

    const-string v0, "binding"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LY2/j;

    invoke-virtual {p1}, LT2/a$b;->b()LY2/b;

    move-result-object v1

    const-string v2, "dev.fluttercommunity.plus/share"

    invoke-direct {v0, v1, v2}, LY2/j;-><init>(LY2/b;Ljava/lang/String;)V

    iput-object v0, p0, LL2/e;->e:LY2/j;

    new-instance v0, Ldev/fluttercommunity/plus/share/a;

    invoke-virtual {p1}, LT2/a$b;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getApplicationContext(...)"

    invoke-static {v1, v2}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ldev/fluttercommunity/plus/share/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LL2/e;->d:Ldev/fluttercommunity/plus/share/a;

    new-instance v0, LL2/d;

    invoke-virtual {p1}, LT2/a$b;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, LL2/e;->d:Ldev/fluttercommunity/plus/share/a;

    const-string v2, "manager"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-static {v2}, Lv3/l;->n(Ljava/lang/String;)V

    move-object v1, v3

    :cond_0
    invoke-direct {v0, p1, v3, v1}, LL2/d;-><init>(Landroid/content/Context;Landroid/app/Activity;Ldev/fluttercommunity/plus/share/a;)V

    iput-object v0, p0, LL2/e;->c:LL2/d;

    new-instance p1, LL2/a;

    iget-object v1, p0, LL2/e;->d:Ldev/fluttercommunity/plus/share/a;

    if-nez v1, :cond_1

    invoke-static {v2}, Lv3/l;->n(Ljava/lang/String;)V

    move-object v1, v3

    :cond_1
    invoke-direct {p1, v0, v1}, LL2/a;-><init>(LL2/d;Ldev/fluttercommunity/plus/share/a;)V

    iget-object v0, p0, LL2/e;->e:LY2/j;

    if-nez v0, :cond_2

    const-string v0, "methodChannel"

    invoke-static {v0}, Lv3/l;->n(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v3, v0

    :goto_0
    invoke-virtual {v3, p1}, LY2/j;->e(LY2/j$c;)V

    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 2

    iget-object v0, p0, LL2/e;->c:LL2/d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "share"

    invoke-static {v0}, Lv3/l;->n(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, v1}, LL2/d;->o(Landroid/app/Activity;)V

    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 0

    invoke-virtual {p0}, LL2/e;->onDetachedFromActivity()V

    return-void
.end method

.method public onDetachedFromEngine(LT2/a$b;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, LL2/e;->e:LY2/j;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "methodChannel"

    invoke-static {p1}, Lv3/l;->n(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    invoke-virtual {p1, v0}, LY2/j;->e(LY2/j$c;)V

    return-void
.end method

.method public onReattachedToActivityForConfigChanges(LU2/c;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, LL2/e;->onAttachedToActivity(LU2/c;)V

    return-void
.end method
