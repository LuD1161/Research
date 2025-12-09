.class public LP/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LP/f;->d(Landroid/content/Context;LP/e;ILjava/util/concurrent/Executor;LP/a;)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LP/a;


# direct methods
.method public constructor <init>(LP/a;)V
    .locals 0

    iput-object p1, p0, LP/f$b;->a:LP/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LP/f$e;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, LP/f$e;

    const/4 v0, -0x3

    invoke-direct {p1, v0}, LP/f$e;-><init>(I)V

    :cond_0
    iget-object v0, p0, LP/f$b;->a:LP/a;

    invoke-virtual {v0, p1}, LP/a;->b(LP/f$e;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, LP/f$e;

    invoke-virtual {p0, p1}, LP/f$b;->a(LP/f$e;)V

    return-void
.end method
