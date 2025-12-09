.class public final Ld/q$g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/window/OnBackAnimationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/q$g;->a(Lu3/l;Lu3/l;Lu3/a;Lu3/a;)Landroid/window/OnBackInvokedCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lu3/l;

.field public final synthetic b:Lu3/l;

.field public final synthetic c:Lu3/a;

.field public final synthetic d:Lu3/a;


# direct methods
.method public constructor <init>(Lu3/l;Lu3/l;Lu3/a;Lu3/a;)V
    .locals 0

    iput-object p1, p0, Ld/q$g$a;->a:Lu3/l;

    iput-object p2, p0, Ld/q$g$a;->b:Lu3/l;

    iput-object p3, p0, Ld/q$g$a;->c:Lu3/a;

    iput-object p4, p0, Ld/q$g$a;->d:Lu3/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackCancelled()V
    .locals 1

    iget-object v0, p0, Ld/q$g$a;->d:Lu3/a;

    invoke-interface {v0}, Lu3/a;->c()Ljava/lang/Object;

    return-void
.end method

.method public onBackInvoked()V
    .locals 1

    iget-object v0, p0, Ld/q$g$a;->c:Lu3/a;

    invoke-interface {v0}, Lu3/a;->c()Ljava/lang/Object;

    return-void
.end method

.method public onBackProgressed(Landroid/window/BackEvent;)V
    .locals 2

    const-string v0, "backEvent"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ld/q$g$a;->b:Lu3/l;

    new-instance v1, Ld/b;

    invoke-direct {v1, p1}, Ld/b;-><init>(Landroid/window/BackEvent;)V

    invoke-interface {v0, v1}, Lu3/l;->i(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onBackStarted(Landroid/window/BackEvent;)V
    .locals 2

    const-string v0, "backEvent"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ld/q$g$a;->a:Lu3/l;

    new-instance v1, Ld/b;

    invoke-direct {v1, p1}, Ld/b;-><init>(Landroid/window/BackEvent;)V

    invoke-interface {v0, v1}, Lu3/l;->i(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
