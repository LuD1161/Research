.class public LS0/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LS0/a;->a(LZ0/u;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:LZ0/u;

.field public final synthetic f:LS0/a;


# direct methods
.method public constructor <init>(LS0/a;LZ0/u;)V
    .locals 0

    iput-object p1, p0, LS0/a$a;->f:LS0/a;

    iput-object p2, p0, LS0/a$a;->e:LZ0/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, LQ0/i;->e()LQ0/i;

    move-result-object v0

    sget-object v1, LS0/a;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheduling work "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, LS0/a$a;->e:LZ0/u;

    iget-object v3, v3, LZ0/u;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LQ0/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, LS0/a$a;->f:LS0/a;

    iget-object v0, v0, LS0/a;->a:LS0/b;

    iget-object v1, p0, LS0/a$a;->e:LZ0/u;

    filled-new-array {v1}, [LZ0/u;

    move-result-object v1

    invoke-virtual {v0, v1}, LS0/b;->c([LZ0/u;)V

    return-void
.end method
