.class public final LF3/b$b$a;
.super Lv3/m;
.source "SourceFile"

# interfaces
.implements Lu3/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LF3/b$b;->a(LL3/a;Ljava/lang/Object;Ljava/lang/Object;)Lu3/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:LF3/b;


# direct methods
.method public constructor <init>(Ljava/lang/Object;LF3/b;LL3/a;)V
    .locals 0

    iput-object p1, p0, LF3/b$b$a;->f:Ljava/lang/Object;

    iput-object p2, p0, LF3/b$b$a;->g:LF3/b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lv3/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    iget-object p1, p0, LF3/b$b$a;->f:Ljava/lang/Object;

    invoke-static {}, LF3/c;->z()LI3/F;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, LF3/b$b$a;->g:LF3/b;

    iget-object p1, p1, LF3/b;->f:Lu3/l;

    const/4 p1, 0x0

    throw p1
.end method

.method public bridge synthetic i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, LF3/b$b$a;->a(Ljava/lang/Throwable;)V

    sget-object p1, Lh3/n;->a:Lh3/n;

    return-object p1
.end method
