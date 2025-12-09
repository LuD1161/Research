.class public Lj1/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj1/c;->K(LY2/i;LY2/j$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:LY2/i;

.field public final synthetic f:Lj1/c$i;

.field public final synthetic g:Lj1/a;

.field public final synthetic h:Lj1/c;


# direct methods
.method public constructor <init>(Lj1/c;LY2/i;Lj1/c$i;Lj1/a;)V
    .locals 0

    iput-object p1, p0, Lj1/c$a;->h:Lj1/c;

    iput-object p2, p0, Lj1/c$a;->e:LY2/i;

    iput-object p3, p0, Lj1/c$a;->f:Lj1/c$i;

    iput-object p4, p0, Lj1/c$a;->g:Lj1/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Ll1/e;

    iget-object v1, p0, Lj1/c$a;->e:LY2/i;

    iget-object v2, p0, Lj1/c$a;->f:Lj1/c$i;

    invoke-direct {v0, v1, v2}, Ll1/e;-><init>(LY2/i;LY2/j$d;)V

    iget-object v1, p0, Lj1/c$a;->h:Lj1/c;

    iget-object v2, p0, Lj1/c$a;->g:Lj1/a;

    invoke-static {v1, v2, v0}, Lj1/c;->a(Lj1/c;Lj1/a;Ll1/f;)Z

    return-void
.end method
