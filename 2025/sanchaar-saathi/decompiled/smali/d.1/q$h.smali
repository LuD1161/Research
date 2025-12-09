.class public final Ld/q$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/i;
.implements Ld/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "h"
.end annotation


# instance fields
.field public final c:Landroidx/lifecycle/g;

.field public final d:Ld/p;

.field public e:Ld/c;

.field public final synthetic f:Ld/q;


# direct methods
.method public constructor <init>(Ld/q;Landroidx/lifecycle/g;Ld/p;)V
    .locals 1

    const-string v0, "lifecycle"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onBackPressedCallback"

    invoke-static {p3, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ld/q$h;->f:Ld/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ld/q$h;->c:Landroidx/lifecycle/g;

    iput-object p3, p0, Ld/q$h;->d:Ld/p;

    invoke-virtual {p2, p0}, Landroidx/lifecycle/g;->a(Landroidx/lifecycle/j;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Ld/q$h;->c:Landroidx/lifecycle/g;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/g;->c(Landroidx/lifecycle/j;)V

    iget-object v0, p0, Ld/q$h;->d:Ld/p;

    invoke-virtual {v0, p0}, Ld/p;->i(Ld/c;)V

    iget-object v0, p0, Ld/q$h;->e:Ld/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ld/c;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ld/q$h;->e:Ld/c;

    return-void
.end method

.method public d(Landroidx/lifecycle/k;Landroidx/lifecycle/g$a;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Landroidx/lifecycle/g$a;->ON_START:Landroidx/lifecycle/g$a;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Ld/q$h;->f:Ld/q;

    iget-object p2, p0, Ld/q$h;->d:Ld/p;

    invoke-virtual {p1, p2}, Ld/q;->i(Ld/p;)Ld/c;

    move-result-object p1

    iput-object p1, p0, Ld/q$h;->e:Ld/c;

    goto :goto_0

    :cond_0
    sget-object p1, Landroidx/lifecycle/g$a;->ON_STOP:Landroidx/lifecycle/g$a;

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Ld/q$h;->e:Ld/c;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ld/c;->cancel()V

    goto :goto_0

    :cond_1
    sget-object p1, Landroidx/lifecycle/g$a;->ON_DESTROY:Landroidx/lifecycle/g$a;

    if-ne p2, p1, :cond_2

    invoke-virtual {p0}, Ld/q$h;->cancel()V

    :cond_2
    :goto_0
    return-void
.end method
