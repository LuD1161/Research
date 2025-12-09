.class public Lj1/c$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj1/c;->F(LY2/i;LY2/j$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lj1/a;

.field public final synthetic f:LY2/i;

.field public final synthetic g:Lj1/c$i;

.field public final synthetic h:Lj1/c;


# direct methods
.method public constructor <init>(Lj1/c;Lj1/a;LY2/i;Lj1/c$i;)V
    .locals 0

    iput-object p1, p0, Lj1/c$d;->h:Lj1/c;

    iput-object p2, p0, Lj1/c$d;->e:Lj1/a;

    iput-object p3, p0, Lj1/c$d;->f:LY2/i;

    iput-object p4, p0, Lj1/c$d;->g:Lj1/c$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lj1/c$d;->h:Lj1/c;

    iget-object v1, p0, Lj1/c$d;->e:Lj1/a;

    iget-object v2, p0, Lj1/c$d;->f:LY2/i;

    iget-object v3, p0, Lj1/c$d;->g:Lj1/c$i;

    invoke-static {v0, v1, v2, v3}, Lj1/c;->f(Lj1/c;Lj1/a;LY2/i;LY2/j$d;)Lj1/a;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lj1/c$d;->g:Lj1/c$i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lj1/c$i;->a(Ljava/lang/Object;)V

    return-void
.end method
