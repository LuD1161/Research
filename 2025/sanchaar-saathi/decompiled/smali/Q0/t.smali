.class public abstract LQ0/t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LQ0/t$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Landroid/content/Context;)LQ0/t;
    .locals 0

    invoke-static {p0}, LR0/E;->l(Landroid/content/Context;)LR0/E;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/content/Context;Landroidx/work/a;)V
    .locals 0

    invoke-static {p0, p1}, LR0/E;->e(Landroid/content/Context;Landroidx/work/a;)V

    return-void
.end method


# virtual methods
.method public final a(LQ0/u;)LQ0/l;
    .locals 0

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, LQ0/t;->b(Ljava/util/List;)LQ0/l;

    move-result-object p1

    return-object p1
.end method

.method public abstract b(Ljava/util/List;)LQ0/l;
.end method

.method public abstract c(Ljava/lang/String;LQ0/c;LQ0/n;)LQ0/l;
.end method
