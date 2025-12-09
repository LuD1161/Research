.class public final LR0/n;
.super Lv0/b;
.source "SourceFile"


# static fields
.field public static final c:LR0/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LR0/n;

    invoke-direct {v0}, LR0/n;-><init>()V

    sput-object v0, LR0/n;->c:LR0/n;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x8

    const/16 v1, 0x9

    invoke-direct {p0, v0, v1}, Lv0/b;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(Ly0/g;)V
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ALTER TABLE workspec ADD COLUMN `run_in_foreground` INTEGER NOT NULL DEFAULT 0"

    invoke-interface {p1, v0}, Ly0/g;->execSQL(Ljava/lang/String;)V

    return-void
.end method
