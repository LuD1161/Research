.class public final LM3/b$b;
.super Lv3/m;
.source "SourceFile"

# interfaces
.implements Lu3/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LM3/b;-><init>(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic f:LM3/b;


# direct methods
.method public constructor <init>(LM3/b;)V
    .locals 0

    iput-object p1, p0, LM3/b$b;->f:LM3/b;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lv3/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(LL3/a;Ljava/lang/Object;Ljava/lang/Object;)Lu3/l;
    .locals 0

    new-instance p1, LM3/b$b$a;

    iget-object p3, p0, LM3/b$b;->f:LM3/b;

    invoke-direct {p1, p3, p2}, LM3/b$b$a;-><init>(LM3/b;Ljava/lang/Object;)V

    return-object p1
.end method

.method public bridge synthetic f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2, p3}, LM3/b$b;->a(LL3/a;Ljava/lang/Object;Ljava/lang/Object;)Lu3/l;

    move-result-object p1

    return-object p1
.end method
