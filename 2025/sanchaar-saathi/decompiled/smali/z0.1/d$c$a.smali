.class public final Lz0/d$c$a;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz0/d$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final e:Lz0/d$c$b;

.field public final f:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lz0/d$c$b;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "callbackName"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cause"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    iput-object p1, p0, Lz0/d$c$a;->e:Lz0/d$c$b;

    iput-object p2, p0, Lz0/d$c$a;->f:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final a()Lz0/d$c$b;
    .locals 1

    iget-object v0, p0, Lz0/d$c$a;->e:Lz0/d$c$b;

    return-object v0
.end method

.method public getCause()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lz0/d$c$a;->f:Ljava/lang/Throwable;

    return-object v0
.end method
