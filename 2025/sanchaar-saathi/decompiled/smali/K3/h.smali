.class public abstract LK3/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public e:J

.field public f:LK3/i;


# direct methods
.method public constructor <init>()V
    .locals 3

    const-wide/16 v0, 0x0

    .line 4
    sget-object v2, LK3/l;->g:LK3/i;

    invoke-direct {p0, v0, v1, v2}, LK3/h;-><init>(JLK3/i;)V

    return-void
.end method

.method public constructor <init>(JLK3/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, LK3/h;->e:J

    .line 3
    iput-object p3, p0, LK3/h;->f:LK3/i;

    return-void
.end method
