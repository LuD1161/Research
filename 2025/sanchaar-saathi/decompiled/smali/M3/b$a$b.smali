.class public final LM3/b$a$b;
.super Lv3/m;
.source "SourceFile"

# interfaces
.implements Lu3/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LM3/b$a;->d(Lh3/n;Ljava/lang/Object;Lu3/l;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic f:LM3/b;

.field public final synthetic g:LM3/b$a;


# direct methods
.method public constructor <init>(LM3/b;LM3/b$a;)V
    .locals 0

    iput-object p1, p0, LM3/b$a$b;->f:LM3/b;

    iput-object p2, p0, LM3/b$a$b;->g:LM3/b$a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lv3/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {}, LM3/b;->m()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object p1

    iget-object v0, p0, LM3/b$a$b;->f:LM3/b;

    iget-object v1, p0, LM3/b$a$b;->g:LM3/b$a;

    iget-object v1, v1, LM3/b$a;->f:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, LM3/b$a$b;->f:LM3/b;

    iget-object v0, p0, LM3/b$a$b;->g:LM3/b$a;

    iget-object v0, v0, LM3/b$a;->f:Ljava/lang/Object;

    invoke-virtual {p1, v0}, LM3/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, LM3/b$a$b;->a(Ljava/lang/Throwable;)V

    sget-object p1, Lh3/n;->a:Lh3/n;

    return-object p1
.end method
