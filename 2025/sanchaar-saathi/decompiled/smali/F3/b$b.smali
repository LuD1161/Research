.class public final LF3/b$b;
.super Lv3/m;
.source "SourceFile"

# interfaces
.implements Lu3/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LF3/b;-><init>(ILu3/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic f:LF3/b;


# direct methods
.method public constructor <init>(LF3/b;)V
    .locals 0

    iput-object p1, p0, LF3/b$b;->f:LF3/b;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lv3/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(LL3/a;Ljava/lang/Object;Ljava/lang/Object;)Lu3/l;
    .locals 1

    new-instance p2, LF3/b$b$a;

    iget-object v0, p0, LF3/b$b;->f:LF3/b;

    invoke-direct {p2, p3, v0, p1}, LF3/b$b$a;-><init>(Ljava/lang/Object;LF3/b;LL3/a;)V

    return-object p2
.end method

.method public bridge synthetic f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2, p3}, LF3/b$b;->a(LL3/a;Ljava/lang/Object;Ljava/lang/Object;)Lu3/l;

    move-result-object p1

    return-object p1
.end method
