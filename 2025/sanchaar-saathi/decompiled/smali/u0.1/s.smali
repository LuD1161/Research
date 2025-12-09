.class public final synthetic Lu0/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lu0/r;

.field public final synthetic f:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lu0/r;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu0/s;->e:Lu0/r;

    iput-object p2, p0, Lu0/s;->f:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lu0/s;->e:Lu0/r;

    iget-object v1, p0, Lu0/s;->f:[Ljava/lang/String;

    invoke-static {v0, v1}, Lu0/r$b;->I(Lu0/r;[Ljava/lang/String;)V

    return-void
.end method
