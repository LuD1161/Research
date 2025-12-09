.class public final LK0/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LK0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LK0/c$a$a;
    }
.end annotation


# static fields
.field public static final b:LK0/c$a$a;

.field public static final c:LK0/c$a;

.field public static final d:LK0/c$a;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LK0/c$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LK0/c$a$a;-><init>(Lv3/g;)V

    sput-object v0, LK0/c$a;->b:LK0/c$a$a;

    new-instance v0, LK0/c$a;

    const-string v1, "NONE"

    invoke-direct {v0, v1}, LK0/c$a;-><init>(Ljava/lang/String;)V

    sput-object v0, LK0/c$a;->c:LK0/c$a;

    new-instance v0, LK0/c$a;

    const-string v1, "FULL"

    invoke-direct {v0, v1}, LK0/c$a;-><init>(Ljava/lang/String;)V

    sput-object v0, LK0/c$a;->d:LK0/c$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK0/c$a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LK0/c$a;->a:Ljava/lang/String;

    return-object v0
.end method
